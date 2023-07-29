# Thèse de doctorat en Informatique

## Approche multicritère pour la caractérisation des adventices

![document-types](img/leaf-plus/beans-mustard-mix.png)

Cette thèse, c'est déroulé à l'UMR Agroécologie de Dijon au sein de l'équipe agriculture de précision et affilié à L'INRAE, AgroSupDijon, UFBC et l'école doctoral E2S (Environnement Santé). D'autres partenaires sont également présents, tel qu'IWMPRAISE, l'ANR Challenge RoSE ou encore l'entreprise SITIA. L'objectif principal était de déterminer les critères les plus discriminants afin de classer des individus (ammats / plantes / feuilles / pixels) à partir d'images entre cultures et adventices.

Ces critères se regroupent en trois familles :
- Critères spatiaux, qui utilisent des notions de distances
- Critères de formes, extrait à partir du contour des individus
- Critères de couleurs/spectres/textures issue d'une caractérisation de la distrubution spatial des couleurs.

# Résumé
L'objectif de cette thèse est de mettre au point un moyen de détecter les adventices dans un champ à l'aide d'images multispectrales, afin de pouvoir déterminer quelles sont les adventices à éliminer pendant le cycle de culture en cours et plus particulièrement aux stades précoces. L'approche multi-critère s'intéresse à la disposition spatiale, à la signature spectrale, à la morphologie et à la texture des plantes présentes dans les parcelles. Ce manuscrit propose une méthode permettant de sélectionner les meilleurs critères pour une discrimination optimale dans un contexte donné. Préalablement, à l'extraction de ces critères, un ensemble de méthodes ont été développées afin de corriger les erreurs du dispositif d'acquisition, de détecter précisément la végétation, puis d'identifier au sein de la végétation les individus sur lesquels les différents critères peuvent être extraits. Pour l'étape de détection des individus, il s'est révélé que l'échelle de la feuille était plus adaptée que celle de la plante. La détection de la végétation et l'identification des feuilles s'appuient sur des méthodes d'apprentissage profond, capables de traiter des feuillages denses. L'introduction de ces méthodes dans une chaîne de traitement usuelle constitue l'originalité de ce manuscrit où chaque partie a fait l'objet d'un article. Concernant le dispositif d'acquisition, une méthode de recalage des bandes spectrales a été développée, et les résultats montrent une précision de l'ordre du pixel. Ensuite, de nouveaux indices de végétation reposant sur de l'intelligence artificielle constituent l'une des avancées scientifiques de cette thèse. À titre indicatif, ces indices permettent d'atteindre 82.19% de mIoU contre 63.93%-73.71% pour des indices standards et fonctionnent en environnement non-contrôlé. Par extension, une méthode de détection des feuilles a été définie. Elle repose sur la détection de leurs contours, et semble avantageuse sur nos données multispectrales. Finalement, les meilleurs couples de propriétés ont été définis pour la discrimination culture/adventices à l'échelle de la feuille, dont les performances atteignent 91% de classification.

## Cadre / Context
Cette thèse s'est déroulée dans un cadre d'agriculture dite conventionnelle. Et plus particulièrement afin de lutter contre les pratiques intensives et leurs conséquences environnementales. Par exemple, les labours, le tassement et compactages des sols ou l'utilisation d'intrants (engrais, produit phytosanitaires, ...). Cette thèse s'insère donc dans ce cadre à travers l'utilisation de nouvelles technologies et de robotique agricole. À cette fin, l'ANR Challenge RoSE a eu pour objectif la mise en place de parcelles expérimentales et l'organisation de rencontre et de challenge afin de mesurer l'avancer technologique de différents consortiums, dont le nôtre. L'évaluation est divisée en quatre tâches :

- Détection : Ou sont les plantes ?
- Interprétation : Est-ce une culture ou une adventice ?
- Décision : Faut-t'il traiter ?
- Action : Comment traité ?

L'entreprise SITIA, c'est focalisé sur les tâches de décision et d'action. Cette thèse a été dédiée aux taches de détection et d'interprétation. Si l'objectif principal de cette thèse est de définir les meilleurs critères pour une discrimination culture/adventice, donc la tâche d'interprétation. On comprend ici que la tâche de détection est également nécessaire et essentiel en préambule.

## Réalisations
Pour réaliser l'ensemble des tâches, deux grands axes sont possibles. Soit une approche standard reposant sur des algorithmes et de la création d'une chaîne de traitement (pré-traitement, Indices de végétation, Segmentation, ...) mais généralement sous-optimal (performances/temps). Soit une approche apprentissage profond, reposant sur des réseaux de neurones, généralement optimal (temps/performances) mais considéré comme difficilement interprétable. Ces deux grands axes ont des inconvénients et des points forts. L'originalité de cette thèse consiste en l'utilisation des deux méthodes. Une chaîne de traitement standard a été définie, mais chaque étape a été optimisée, soit par des hyper-paramètres, soit par apprentissage profond. Ces travaux ont mené à la création de quatre publications :

- Two-step multi-spectral registration via key-point detector and gradient similarity. Application to agronomic scenes for proxy-sensing
  - https://gitlab.com/phd-thesis-adventice/phd-airphen-alignment
  - https://github.com/Phirxian/phd-airphen-alignment
- DeepIndices : A new approach to remote sensing indices based on optimization and approximation of functions through deep-learning, with application to vegetation surfaces over uncalibrated data
  - https://gitlab.com/phd-thesis-adventice/codes/phd-index-optimizer
- Pixelwise Instance Segmentation Of Leaves In Dense Foliage
  - https://gitlab.com/phd-thesis-adventice/codes/phd-segmentation-optimizer
- Weed discrimination at leaf scale : towards the characterization of the vegetation  cover : A large comparison of shape, spatial and textural features
  - https://gitlab.com/phd-thesis-adventice/codes/phd-leaf-features

## Manuscrit
Ce repository contient le manuscrit de thèse au format latex/tikz et une version compilée est disponible sur TEL.

- Tout d'abord un **préambule** présente brièvement le cadre général, les différents partenaires, les objectifs de la thèse, ainsi que le contexte de cette dernière.
- Un chapitre **introduction** présente le cadre plus en profondeur, notamment les problématiques agricoles et leurs conséquences environnementales. Une présentation de l'agriculture de précision qui est étudiée à l'UMR Agroécologie est faite pour démontrer qu'elle présente un des axes de levier face aux enjeux environnementaux. Finalement, les problématiques liées au désherbage sont discutées avec une présentation des méthodes "actuelles" et "en cours de développement".
- Dans l'introduction, nous avons vu que la robotique et la vision par ordinateur sont un axe de recherche possible dont cette thèse est focalisée sur ces méthodes. Ainsi, un état de l'art assez conséquent est proposé dans ce chapitre **Vision par ordinateur** pour donnée au lecteur une vue globale de la discipline. À la fin de ce chapitre, une conclusion permet de comprendre les choix qui ont été faits durant cette thèse.
- Le chapitre suivant, **matériel et données** introduit simplement la caméra multi-spectrale qui a été utiliser. Le choix des bandes spectrales à été défini par une étude antérieure au sein de ce laboratoire. Pour évaluer nos différents algorithmes, deux parcelles expérimentales ont été utilisées. L'une à AgroSup Dijon, l'autre à l'INRAE de Montoldre. Les différentes corrections "simples" liées aux matériels sont également expliquées ici.
- Les quatre chapitres suivants introduisent les quatre articles issus des travaux de cette thèse. (défini plus haut).
- Finalement, une conclusion et des perspectives sont proposées au vu des résultats de cette thèse.

Bonne lecture

# Citations

## Thèse

```bibtex
@phdthesis{vayssade:tel-03688127,
  TITLE = {{Approche multi-crit{\`e}re pour la caract{\'e}risation des adventices}},
  AUTHOR = {Vayssade, Jehan-Antoine},
  URL = {https://theses.hal.science/tel-03688127},
  SCHOOL = {{Universit{\'e} Bourgogne Franche-Comt{\'e}}},
  YEAR = {2022},
  MONTH = Mar,
  KEYWORDS = {Statistics ; Prediction ; Precision agriculture ; Computer vision ; Image analysis ; Artificial intelligence ; Vision par ordinateur ; Analyse d'image ; Intelligence artificielle ; Statistiques ; Pr{\'e}diction ; Agriculture de pr{\'e}cision},
  TYPE = {Theses},
  PDF = {https://theses.hal.science/tel-03688127/file/thesis-final.pdf},
  HAL_ID = {tel-03688127},
  HAL_VERSION = {v1},
}
```

## Articles publiés

```bibtex
@inproceedings{vayssade:hal-02499730,
  TITLE = {{Two-step multi-spectral registration via key-point detector and gradient similarity. Application to agronomic scenes for proxy-sensing}},
  AUTHOR = {Vayssade, Jehan-Antoine and Jones, Gawain and Paoli, Jean-No{\"e}l and G{\'e}e, Christelle},
  URL = {https://institut-agro-dijon.hal.science/hal-02499730},
  BOOKTITLE = {{Proceedings of the 15th International Joint Conference on Computer Vision, Imaging and Computer Graphics Theory and Applications}},
  ADDRESS = {La Valette, Malta},
  YEAR = {2020},
  MONTH = Feb,
  DOI = {10.5220/0009169301030110},
  KEYWORDS = {Registration ; Multi-spectral imagery ; Precision farming ; Feature descriptor},
  PDF = {https://institut-agro-dijon.hal.science/hal-02499730/file/airphen-multispectral-registration-v16.pdf},
  HAL_ID = {hal-02499730},
  HAL_VERSION = {v1},
}
@Article{rs13122261,
  AUTHOR = {Vayssade, Jehan-Antoine and Paoli, Jean-Noël and Gée, Christelle and Jones, Gawain},
  TITLE = {DeepIndices: Remote Sensing Indices Based on Approximation of Functions through Deep-Learning, Application to Uncalibrated Vegetation Images},
  JOURNAL = {Remote Sensing},
  VOLUME = {13},
  YEAR = {2021},
  NUMBER = {12},
  ARTICLE-NUMBER = {2261},
  URL = {https://www.mdpi.com/2072-4292/13/12/2261},
  ISSN = {2072-4292},
  DOI = {10.3390/rs13122261}
}
@inproceedings{vayssade:hal-03278985,
  TITLE = {{DeepIndices : Une nouvelle approche des indices de t{\'e}l{\'e}d{\'e}tection bas{\'e}e sur l'optimisation et l'approximation de fonctions par DeepLearning. Application aux indices de v{\'e}g{\'e}tation sur des donn{\'e}es non calibr{\'e}es}},
  AUTHOR = {Vayssade, Jehan-Antoine and Paoli, Jean-No{\"e}l and G{\'e}e, Christelle and Jones, Gawain},
  URL = {https://institut-agro-dijon.hal.science/hal-03278985},
  BOOKTITLE = {{Conference: RJCIA : Rencontres des Jeunes Chercheur$\times$ses en Intelligence Artificielle}},
  ADDRESS = {Bordeaux, France},
  YEAR = {2021},
  MONTH = Jul,
  KEYWORDS = {Agriculture de pr{\'e}cision ; Images multi-spectrale ; Indices spectral ; T{\'e}l{\'e}d{\'e}tection ; Deep-learning ; Proxid{\'e}tection},
  PDF = {https://institut-agro-dijon.hal.science/hal-03278985/file/short-paper.pdf},
  HAL_ID = {hal-03278985},
  HAL_VERSION = {v1},
}
@article{VAYSSADE2022106797,
  title = {Pixelwise instance segmentation of leaves in dense foliage},
  journal = {Computers and Electronics in Agriculture},
  volume = {195},
  pages = {106797},
  year = {2022},
  issn = {0168-1699},
  doi = {https://doi.org/10.1016/j.compag.2022.106797},
  url = {https://www.sciencedirect.com/science/article/pii/S0168169922001144},
  author = {Jehan-Antoine Vayssade and Gawain Jones and Christelle Gée and Jean-Noël Paoli},
  keywords = {Precision agriculture, Remote sensing, Leaf segmentation, Dense foliage, Boundary detection, Semantic segmentation, CNN, Multispectral},
}
@article{VAYSSADE2023100245,
  title = {Towards the characterization of crop and weeds at leaf scale: A large comparison of shape, spatial and textural features},
  journal = {Smart Agricultural Technology},
  volume = {5},
  pages = {100245},
  year = {2023},
  issn = {2772-3755},
  doi = {https://doi.org/10.1016/j.atech.2023.100245},
  url = {https://www.sciencedirect.com/science/article/pii/S2772375523000758},
  author = {Jehan-Antoine Vayssade and Gawain Jones and Jean-Noël Paoli},
  keywords = {Leaf classification, Crop and weed discrimination, Remote sensing, Multispectral},
}
```
