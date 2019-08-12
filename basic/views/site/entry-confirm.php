<?php
use yii\helpers\Html;
?>
<p>You have entered the following information:</p>

<ul>
    <li><label>First name</label>: <?= Html::encode($model->name) ?></li>
    <li><label>Last name</label>: <?= Html::encode($model->lname) ?></li>
</ul>