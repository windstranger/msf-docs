const msg = {
  filter: {
    products: [
      {
        id:,
      },
    ],
  },
};


const orderNotification = {
  msg: 'что показываем пользователю в уведомлении',
  //дата когда произошло событие
  notificationDate: new Date(),
  orderId: 'номер заказа',
  orderStatus: 'CREATED',
  comment: 'комментарий',
};

// short with ids or expanded with details
//200:
const descr = {
  body: [
    {
      dishId: '123',
      cookId: "123",
      authorId: "321",
      description: "фо бо",
      statistic: {
       weight: "123 kg",
       calories: "123",
      },
      ingredients: [
        {
          productId: "123",
          name: "Чили"
        }
      ]
    },
    {
      dishId: '1234',
      description: "фо бо",
    },
  ],
};

//400: bad request
const error = {
  errorCode: "BAD_REQUEST"
}
//401: redirect to auth
const error = {}
//500: упал бэк, по неизвестной причине
const error = {
  stackTrace: ";lqewf",
  errorCode: "SYSTEM_FAILURE"
}
//421: ошибки с бекенда для пользователя
//msgTypes
  const error = {
    msg: "вы выбрали кетчуп как включенный и исключенный, измените выбор",
    errorCode: "NOT_VALID_FILTER"
  }

