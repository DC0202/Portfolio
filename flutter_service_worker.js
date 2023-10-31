'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "f124181e58b12572810925130e6735b8",
"index.html": "89719f491672e5337c97411371783560",
"/": "89719f491672e5337c97411371783560",
"main.dart.js": "9c23e1b215a7deaddc021eb19136c33d",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "cc63d9628d0b96c5a94220319fe72885",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "47e086f8841aee14e325f5f82ed0795f",
"assets/AssetManifest.json": "3712364b840ceb61d8f4a885e9825839",
"assets/NOTICES": "ba082547b9e334e27bf8c0f2aba18488",
"assets/FontManifest.json": "663783f541c46e7f04c244ce710d1b61",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "e9448dd32241291fc17be83d5f7ae016",
"assets/fonts/MaterialIcons-Regular.otf": "952119d2999bacc13285b297014ecaec",
"assets/assets/imgs/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/imgs/flutter1.svg": "147ce92c2978531b4c486e7f4e62b621",
"assets/assets/imgs/01.png": "15ac6d1d45fe948287329f2bde21b6e5",
"assets/assets/imgs/03.png": "f4360b75dfe608a50d97581aed1f7067",
"assets/assets/imgs/02.png": "03a632e04793aff9ae155a2c50c20e7d",
"assets/assets/imgs/06.png": "5835facaa9bd82b46c008ccd478d6043",
"assets/assets/imgs/07.png": "90a7468acd0c4ac4b104d45a78ef0657",
"assets/assets/imgs/05.png": "1be86e71fe6e5a71dda1bbc465257751",
"assets/assets/imgs/Headshot.jpg": "f2e580758407398dd4dcfcc5f12daaa0",
"assets/assets/imgs/04.png": "45853b5c8c98a8d4eaa43208da248cfa",
"assets/assets/imgs/coding.jpeg": "c83781b82f0b7d0c9e536438dd0a7b02",
"assets/assets/imgs/mobilewebdev.svg": "b6b6b4693d0b4f9e8eb50dc221f06b2a",
"assets/assets/imgs/BG01.png": "292fe68441561eae14b077f8f112acf9",
"assets/assets/logos/dailyDashLogo.jpeg": "bf85157eb788fee7ed906f2250896aa2",
"assets/assets/logos/git.png": "ab40d02f0aa8bf85de12fd45bda5b0c0",
"assets/assets/logos/docker.png": "6e65e48aefb9a3a4adc9dcdd88b1bb65",
"assets/assets/logos/python.png": "9ae7d0c2a37c4626d2ea58f615906814",
"assets/assets/logos/angular.png": "96261bb0fa4293c0422e136cf51f59e3",
"assets/assets/logos/database.png": "d8ad76f205acad63104e129e03d65942",
"assets/assets/logos/programmer.png": "ea898fa04c5e57585f9e2114c4c92415",
"assets/assets/logos/ethhicalHacker.png": "d5407ed7c439095c6ec7e06081f3cf72",
"assets/assets/logos/github.png": "3e54ed15b9cd877c5223f5ecf64579df",
"assets/assets/logos/java.png": "4eb1819dc863ef386e09d86e9f482a9f",
"assets/assets/logos/android.png": "35563ecf6d1eafce0dda2aa903d3ce59",
"assets/assets/logos/js.png": "a00831a712bb4f59eba35cb2c4c7a737",
"assets/assets/logos/iuLogo.jpeg": "d8443eacc657afb6d3ce746135dd55ab",
"assets/assets/logos/restapi.png": "a26fadd01c4a7cc59dc4f9b6cd08cc90",
"assets/assets/logos/embedcode.png": "ecf79ae11bc3434c060b5fb4dd2dc812",
"assets/assets/logos/vscode.png": "a34f406fe842c6031072168d61e60349",
"assets/assets/logos/postgresql.png": "91675a4e1a150e8570cca5c22614da7c",
"assets/assets/logos/html.png": "c2d6e9861f5bb81ecd0231e80adbfbe3",
"assets/assets/logos/daxyLogo.jpeg": "ff80c74d1194e26524980d856813361b",
"assets/assets/logos/swift.png": "1d45b6cee96ec31748de8c1c63987108",
"assets/assets/logos/react.png": "b15b960e1cafb15e83d78f73e5f1ab34",
"assets/assets/logos/c++.png": "01cde6408e890599cb8b0aa118215c17",
"assets/assets/logos/c.png": "623f8181c81323e831a831bd69b76d95",
"assets/assets/logos/oceanTransworldLogo.jpeg": "0885a71d2f1a21765e257005ea16d68d",
"assets/assets/logos/css.png": "f779e6b924429a0ad04d6c90f1f1cd8c",
"assets/assets/logos/kali.png": "446c5cfaf71ab8b867343900bc158a66",
"assets/assets/logos/dart.png": "c979b430b2da155059ebc0a22b0a26ac",
"assets/assets/logos/nodejs.png": "854ac896af0919189fbac8eedd3ec98a",
"assets/assets/icons/android.svg": "e57e55c11155e0da56d4913db52486c7",
"assets/assets/icons/graphic.svg": "6f05c1c6706df22c79a37a7ca4df3214",
"assets/assets/icons/website.svg": "421f827e65eb765b8ad10e386bf07849",
"assets/assets/icons/apple.svg": "81afc16bd2183fcbdad794cd391e7f0d",
"assets/assets/fonts/montserrat/montserrat.ttf": "ee6539921d713482b8ccd4d0d23961bb",
"assets/assets/fonts/poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/fonts/poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/assets/fonts/poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/assets/gif/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
