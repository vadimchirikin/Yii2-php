<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ServicelistSearch */
/* @var $form yii\widgets\ActiveForm 

<?= $form->field($model, 'type') 

*/
?>

<div class="servicelist-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'type')->dropDownList(['Hosting' => 'Hosting', 'Proxy' => 'Proxy'],['prompt'=>'Select Type']) ?>

    <?= $form->field($model, 'user') ?>

    <?= $form->field($model, 'ip') ?>

    <?= $form->field($model, 'domain') ?>
	
	<?= $form->field($model, 'user_id') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
