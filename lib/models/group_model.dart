class GroupModel {
  String pathImage;
  String title;
  String subTitle;
  String hour;
  int nroMessages;

  GroupModel({
    this.pathImage,
    this.title,
    this.subTitle,
    this.hour,
    this.nroMessages,
  });

  static final fakeData = [
    GroupModel(
      pathImage: 'assets/icon_profile/1.png',
      title: 'WeDevs - Web',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 0,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/2.png',
      title: 'WeDevs - Flutter',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 14,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/3.png',
      title: 'WeDevs - MEAN Stack',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 13,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/4.png',
      title: 'WeDevs - BackEnd',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 0,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/5.png',
      title: 'WeDevs - Web',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 11,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/6.png',
      title: 'WeDevs - Flutter',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 10,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/7.png',
      title: 'WeDevs - MEAN Stack',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 10,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/8.png',
      title: 'WeDevs - BackEnd',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 0,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/9.png',
      title: 'WeDevs - MEAN Stack',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 0,
    ),
    GroupModel(
      pathImage: 'assets/icon_profile/10.png',
      title: 'WeDevs - BackEnd',
      subTitle: 'No se olviden de su tarea',
      hour: '08:45 pm',
      nroMessages: 10,
    ),
  ];
}
