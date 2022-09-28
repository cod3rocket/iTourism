interface LocalesModel {
  header: {
    features: string;
    contact: string;
    drawer: {
      languages: string;
      navigation: string;
    };
  };
  footer: {
    accomplishment: {
      first: string;
      second: string;
      third: string;
    };
    copyright: string;
  };
  heading: {
    title: string;
    subtitle: string;
  };
  features: {
    title: {
      first: string;
      second: string;
      third: string;
      fourth: string;
      fifth: string;
      sixth: string;
    };
    infoText: {
      first: string;
      second: string;
      third: string;
      fourth: string;
      fifth: string;
      sixth: string;
    };
  };
  contact: {
    description: string;
    notificationTime: {
      first: string;
      second: string;
    };
    notificationMessage: string;
  };
}

export type { LocalesModel };
