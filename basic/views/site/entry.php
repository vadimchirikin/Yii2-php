<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<?php $form = ActiveForm::begin(); ?>
	
	First name:
    <?= $form->field($model, 'name') ?>

	Last name:
    <?= $form->field($model, 'lname') ?>

    <div class="form-group">
        <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
    </div>

<?php ActiveForm::end(); ?>

<?php

	// возвращает набор строк. каждая строка - это ассоциативный массив с именами столбцов и значений.
	// если выборка ничего не вернёт, то будет получен пустой массив.
	Yii::$app->db->createCommand('SELECT * FROM user')->execute();