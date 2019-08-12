<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Servicelist;
use app\models\Client;
use app\models\ClientSearch;

/**
 * ServicelistSearch represents the model behind the search form of `app\models\Servicelist`.
 */
class ServicelistSearch extends Servicelist
{
    /**
     * {@inheritdoc}
     */
	 
	 public $fname;
	 
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['type', 'user', 'ip', 'domain', 'fname', 'user_id'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Servicelist::find();

        // add conditions that should always apply here
		
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'user', $this->user])
            ->andFilterWhere(['like', 'ip', $this->ip])
            ->andFilterWhere(['like', 'domain', $this->domain])
			->andFilterWhere(['like', 'user_id', $this->user_id]);

        return $dataProvider;
    }
}
