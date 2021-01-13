module.exports = {
  isDevel: false,
  inMante: false, // set to true and deploy if you want to set a maintenance message in all the services
  enabledLangs: ['en', 'fr', 'es' ],
  mainDomain: 'vtatlasoflife.org', // used for cookies (without http/https)
  mainLAUrl: 'https://vtatlasoflife.org',
  parentUrl: 'https://val.vtecostudies.org',
  baseFooterUrl: 'https://vtatlasoflife.org/basic-brand-2020',
  services: {
    collectory: { url: 'https://collectory.vtatlasoflife.org', title: 'Collections' },
    biocache: { url: 'https://biocache.vtatlasoflife.org', title: 'Occurrence records' },
    biocacheService: { url: 'https://biocache-ws.vtatlasoflife.org', title: 'Occurrence records webservice' },
    bie: { url: 'https://bie.vtatlasoflife.org', title: 'Species' },
    regions: { url: 'https://regions.vtatlasoflife.org', title: 'Regions' },
    lists: { url: 'https://lists.vtatlasoflife.org', title: 'Species List' },
    spatial: { url: 'https://spatial.vtatlasoflife.org', title: 'Spatial Portal' },
    images: { url: 'https://images.vtatlasoflife.org', title: 'Images Service' },
    cas: { url: 'https://auth.vtatlasoflife.org', title: 'CAS' }
  },
  otherLinks: [
    { title: 'Datasets', url: 'https://collections.vtatlasoflife.org/datasets' },
    { title: 'Explore your area', url: 'https://biocache.vtatlasoflife.org/explore/your-area/' },
    { title: 'Datasets', url: 'https://collections.vtatlasoflife.org/datasets' },
    { title: 'twitter', url: '', icon: 'twitter' }
  ]
}
