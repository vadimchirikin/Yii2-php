<?php

namespace app\models;

use Yii;
use yii\base\Model;

class EntryForm extends Model
{
    public $name;
    public $email;
	public $lname;

    public function rules()
    {
        return [
            [['name', 'lname'], 'required'],
            //['email', 'email'],
        ];
    }

}

	$model = new EntryForm();
	$model->name = 'Qiang';
	$model->lname = 'bad';
	if ($model->validate()) {
		// Good!
	} else {
		// Failure!
		// Use $model->getErrors()
	}
