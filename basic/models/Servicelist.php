<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "servicelist".
 *
 * @property int $id
 * @property string $type
 * @property string $user
 * @property string $ip
 * @property string $domain
 */
class Servicelist extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'servicelist';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'type', 'user', 'ip', 'domain', 'user_id'], 'required'],
            [['id', 'user_id'], 'integer'],
            [['type'], 'string', 'max' => 7],
            [['user', 'domain'], 'string', 'max' => 30],
            [['ip'], 'string', 'max' => 15],
			// проверяет, что "ip_address" - это валидный IPv4 или IPv6 адрес
			[['ip'], 'ip'],
            [['id'], 'unique'],
			// проверяет, что "domain" начинается с буквы и содержит только буквенные символы,
			// числовые символы и знак подчеркивания
			[['domain'], 'match', 'pattern' =>  '/^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,}$/']
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Service.ID',
            'type' => 'Service.Type',
            'user' => 'User.FirstName or User.LastName',
            'ip' => 'Service.IP',
            'domain' => 'Service.Domain',
			'user_id' => 'User.ID',
        ];
    }
	
	public function getClient()
	{
		return $this->hasOne(Client::className(), ['id' => 'id']);
	}

	public function getFirstName()
	{
		return $this->client ? $this->servicelist->fname : 'First Name';
	}

	public function getLastName()
	{
		return $this->client ? $this->servicelist->lname : 'Last Name';
	}
}
