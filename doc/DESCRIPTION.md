The A.R.M. (Automatic Ripping Machine) detects the insertion of an optical disc, identifies the type of media, and autonomously performs the appropriate action:
- DVD / Blu-ray -> Rip with MakeMKV and transcode with Handbrake, then add OMDB or TMDB metadata. 
- Audio CD -> Rip and encode to FLAC, then tag the files if possible using MusicBrainz metadata.
- Data Disc -> Make an ISO backup

Once it completes a rip it can send notifications and ejects the disc so that you can pop in another one.

#### Hardware requirements

For video transcoding (as per Hanbrake's requirements): 
- CPU:
    - AMD Ryzen, Threadripper, or Epyc
    - Intel Core (6th generation and newer) i3, i5, i7, i9, or equivalent Xeon
- RAM (with default settings):
    - 1 GB for transcoding standard definition video (480p/576p)
    - 2 to 8 GB for transcoding high definition video (720p/1080p)
    - 6 to 16 GB or more for transcoding ultra high definition video (2160p 4K)

For CD, DVD or Bluray ripping : 
- One or more optical drives
- Minimum storage space in `$data_dir`of:
    -  1 GB for a CD
    - 10 GB for a DVD
	- 20 GB for a Bluray
