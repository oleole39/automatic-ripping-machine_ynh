L'A.R.M. (Automatic Ripping Machine) détecte l'insertion d'un disque, identifie le type de media, et exécute l'action appropriée de façon autonome:
- DVD / Blu-ray -> Rip avec MakeMKV et transcodage avec Handbrake, puis ajout si possible des métadonnées d'OMDB ou TMDB.
- CD Audio -> Rip et encodage en FLAC puis ajout si possible des métadonnées de MusicBrainz.
- Disque de donnée -> Crée une sauvegarde ISO

Une fois le rip terminé, elle peut envoyer des notifications et éjecte le disque pour que vous puissiez en insérer un autre.

#### Besoins matériels

Pour le transcodage vidéo (selon les besoins d'Handbrake): 
- CPU:
    - AMD Ryzen, Threadripper, ou Epyc
    - Intel Core (6ème génération ou plus récente) i3, i5, i7, i9, ou un équivalent de la gamme Xeon
- RAM (avec les réglages par défaut):
    - 1 Go pour transcoder des vidéos en définition standard(480p/576p)
    - 2 à 8 GB pour transcoder des vidéos en haute définition (720p/1080p)
    - 6 à 16 GB, voire plus, pour transcoder des vidéos en très haute définition (2160p 4K)

Pour le rip de CD, DVD, Bluray: 
- un ou plusieurs lecteurs optiques
- Espace de stockage minimum dans `$data_dir` de:
    -  1 Go pour un CD
    - 10 Go pour un DVD
	- 20 Go pour un Bluray
