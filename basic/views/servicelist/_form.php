<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Servicelist;
use app\models\Client;

/* @var $this yii\web\View */
/* @var $model app\models\Servicelist */
/* @var $form yii\widgets\ActiveForm */
/*<?= $form->field($model, 'type')->textInput(['maxlength' => true]) ?>
  <?= $form->field($model, 'user')->textInput(['maxlength' => true]) ?>
  $form->field($model, 'type')->dropDownList(ArrayHelper::map(Servicelist::find()->all(), 'id', 'type'),['prompt'=>'Select Type']) ?> 
  
      <?= $form->field($model, 'id')->textInput() ?>
	  
	  $form->field($model, 'type')->dropDownList(ArrayHelper::map(Servicelist::find()->all(), 'id', 'type'),['prompt'=>'Select Type']) ?> 
  
      $query->select(["CONCAT(first_name, ’ ’, last_name) AS full_name", ’email’])
      $customers = Customer::find()->asArray()->all();
      $invoice_paid = PaymentDtl::find()->select(['id_invoice', 'total' => 'sum(payment_value)'])->joinWith('idPayment')->where(['payment_type' => $inv_type, 'id_invoice' => $ids])->groupBy('id_invoice')->indexBy('id_invoice')->asArray()->all();
      https://hotexamples.com/ru/examples/-/ArrayHelper/map/php-arrayhelper-map-method-examples.html
 
	  
	  
  */

?>

<div class="servicelist-form">

    <?php $form = ActiveForm::begin(); ?>
	
	<?= $form->field($model, 'id')->textInput() ?>
	
	<?= $form->field($model, 'type')->dropDownList(['Hosting' => 'Hosting', 'Proxy' => 'Proxy'],['prompt'=>'Select Type',
        'options' => [
            '' => ['Selected' => true]]]) ?>

	<?= $form->field($model, 'user')->dropDownList(ArrayHelper::map(Client::find()->select(["concat(fname,' ',lname) as full_name"])->asArray()->all(), 'full_name', 'full_name'),['prompt'=>'Select User',
        'options' => [
            '' => ['Selected' => true],
			]])->label('User Fist Name & User Last Name') ?>

    <?= $form->field($model, 'ip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'domain')->textInput(['maxlength' => true]) ?>

	<?= $form->field($model, 'user_id')->dropDownList(ArrayHelper::map(Client::find()->asArray()->all(), 'id', 'id'),['prompt'=>'Select User',
        'options' => [
            '' => ['Selected' => true],
			]])->hint('Please don\'t change User ID')->label('User ID') ?>


    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>
