<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\ArrayHelper;
use app\models\Servicelist;
use app\models\Client;

use yii\helpers\Url;
use yii\bootstrap\Button;


/* @var $this yii\web\View */
/* @var $searchModel app\models\ServicelistSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

/* 	Html::a('Create Client', Url::to('/basic/web/index.php?r=client%2Fcreate'), ['class' => 'btn btn-success']) 

	<?= Html::label('Найдено N результатов', null, ['class' => 'label label-info']) ?>
*/

$this->title = 'Service List Page';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="servicelist-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Client', ['/client/create'], ['class' => 'btn btn-success']) ?> 
		<?= Html::a('Create Servicelist', ['create'], ['class' => 'btn btn-success']) ?>
		
    </p>

    <?php Pjax::begin(); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn', 'header' => '№'],

            //'id',
            [
				'header' => 'Type',
				'attribute' => 'type',
				'value' => 'type',
				'filter' => Html::activeDropDownList($searchModel, 'type', ['Hosting' => 'Hosting', 'Proxy' => 'Proxy'],['class'=>'form-control','prompt' => 'Select Type']),
			],
            [
				'header' => 'User',
				'attribute' => 'user',
				'value' => 'user',
				'filter' => Html::activeDropDownList($searchModel, 'user', ArrayHelper::map(Client::find()->select(["concat(fname,' ',lname) as full_name"])->asArray()->all(), 'full_name', 'full_name'),['class'=>'form-control','prompt' => 'Select User']),
			],
            [
				'header' => 'IP',
				'attribute' => 'ip',
				'value' => 'ip',
			],
            [
				'header' => 'Domain',
				'attribute' => 'domain',
				'value' => 'domain',
			],
			//'user_id',

            ['class' => 'yii\grid\ActionColumn', 'template' => '{view} {update} {delete}', 'header' => 'Action'],
        ],
    ]); ?>

	<?= Html::label('Serching FORM:', null, ['class' => 'label label-info']) ?>
	
	<?php echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php Pjax::end(); ?>

</div>
