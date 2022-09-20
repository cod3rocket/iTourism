interface LocalesModel {
  header: {
    features: string;
    contact: string;
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
      utilities: string;
      extras: string;
    };
    attractions: string;
    events: string;
    public_utilities: string;
    real_time: string;
    maps: string;
    filter: string;
    push_notification: string;
    lang_support: string;
  };
}

export type { LocalesModel };
