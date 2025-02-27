(import 'supertagger.jsonnet') + {
  dataset_reader+: {
    type: 'finetune_supertagging_dataset',
    lazy: true,
    tritrain_noisy_weight: 0.4,
    ccgbank_ratio: 0.2,
    tritrain_ratio: 0.0000002,
    auxiliary_ratio: 20, // around 1,300 examples
    token_indexers: super.token_indexers,
  },
  train_data_path: {
    ccgbank: 'http://cl.naist.jp/~masashi-y/resources/tagger_data/traindata.json',
    tritrain: "http://cl.naist.jp/~masashi-y/resources/tagger_data/headfirst_filtered.json",
    auxiliary: '/home/cl/masashi-y/ud2ccg/questions/questions/qus_train.json'
  },
  validation_data_path: '/home/cl/masashi-y/ud2ccg/questions/questions/qus_test.supertagger.json'
}
