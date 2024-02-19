'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "f124181e58b12572810925130e6735b8",
"index.html": "a62261ded986f23a83670e9918e546d1",
"/": "a62261ded986f23a83670e9918e546d1",
"main.dart.js": "2a64c605d4ed62a63f401c0d4037bd31",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "cc63d9628d0b96c5a94220319fe72885",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "47e086f8841aee14e325f5f82ed0795f",
"assets/AssetManifest.json": "eab6b775583f7838e50048194a82c18e",
"assets/NOTICES": "98f973ecd10b9705699348055a3efd47",
"assets/FontManifest.json": "72f331dddb34e918ecd6c809947093a4",
"assets/AssetManifest.bin.json": "4ccbb4044cef55ef596a8fd88709b07a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "e2e8ce8c133c9fd2a5786e29c929ca03",
"assets/fonts/MaterialIcons-Regular.otf": "952119d2999bacc13285b297014ecaec",
"assets/assets/imgs/03.webp": "07812271346ba1e39f6fa6469f37ae78",
"assets/assets/imgs/coding.webp": "7e59da34182866ef5ca9ea64fcb20935",
"assets/assets/imgs/flutter.png": "0b5a2f8d3f4d173805affaf9f84f6c87",
"assets/assets/imgs/02.webp": "6226cef924a8ab9fc4142eeb3a60576b",
"assets/assets/imgs/flutter1.svg": "147ce92c2978531b4c486e7f4e62b621",
"assets/assets/imgs/05.webp": "f99de9a7fa1f4303e869486510152d44",
"assets/assets/imgs/04.webp": "eb5a80354605b4a0bddf8b74fc93cff2",
"assets/assets/imgs/mobilewebdev.svg": "b6b6b4693d0b4f9e8eb50dc221f06b2a",
"assets/assets/imgs/07.webp": "a51c3fb8c50b8ce4a7360724c557d54c",
"assets/assets/imgs/06.webp": "de245601bd66fa863ac3e79086fd7e4e",
"assets/assets/imgs/01.webp": "cbf05313925a55839b7ed137ba8d130c",
"assets/assets/imgs/Headshot.webp": "d15b3deeb4b264ae0dc1b4b85d55da2a",
"assets/assets/logos/daxyLogo.webp": "d650fe63616dfe42fe3d456fa327618d",
"assets/assets/logos/python.webp": "032754e23c0d31ba710a3d420f4bcbb4",
"assets/assets/logos/git.webp": "20008b99719d8aa8cbf904eba2ed7496",
"assets/assets/logos/embedcode.webp": "12949da5afe4b9415344f4b82e317058",
"assets/assets/logos/postgresql.webp": "b1fc1bebacdc1d1880cc3a818bbb2f68",
"assets/assets/logos/kali.webp": "179ae2f058f0ebef5318f211e9a20b7e",
"assets/assets/logos/ethhicalHacker.webp": "e2ad1a7f8e58427a74f1095f591a5f37",
"assets/assets/logos/c.webp": "8e5593f8292eb1c2e0af4fdb3a486625",
"assets/assets/logos/nodejs.webp": "68df9fc24c52f5f627c7af7eafe94816",
"assets/assets/logos/html.webp": "bd0616d1d7eab0c3a5097d99f39279a8",
"assets/assets/logos/github.webp": "f00f0bc652bf8fc5862bb18d7c30fa23",
"assets/assets/logos/database.webp": "807c2bad78efa644df50f2ab97d7e4b0",
"assets/assets/logos/dart.webp": "d46830e9ac86db14f167748d1b30b4f0",
"assets/assets/logos/css.webp": "2d88ee79eca82442c0b90b607a99c666",
"assets/assets/logos/react.webp": "5ef851c77300201d973cb75486e8e3b4",
"assets/assets/logos/vscode.webp": "1b731e5c586ea6a0b9c208b62d2508f3",
"assets/assets/logos/angular.webp": "54ca833d739e65c028070e8c738df97e",
"assets/assets/logos/docker.webp": "7d33cb45fdc0166f2b43104638b5a55d",
"assets/assets/logos/oceanTransworldLogo.webp": "2caa729d05103f1ece8d445eda748c83",
"assets/assets/logos/programmer.webp": "34d460fdc72f850c5f313971d3523f5a",
"assets/assets/logos/dailyDashLogo.webp": "02384404fb4d1ea89c63386e62797308",
"assets/assets/logos/js.webp": "0765577f078f89e22327f705e0b89211",
"assets/assets/logos/iuLogo.webp": "ef014a6397613d7e3fd629f093662573",
"assets/assets/logos/restapi.webp": "9ae9339e2847318c3850a7b680d29ae3",
"assets/assets/logos/android.webp": "98b1f6e217c47a5317f82197b8d421e6",
"assets/assets/logos/c++.webp": "3a2523c5053d8efb1e65ebc7f413cd8c",
"assets/assets/logos/java.webp": "0db7be31b0b165d211d8180ef6e4013e",
"assets/assets/logos/swift.webp": "f32be5bedd0d0e8317c75493099123fd",
"assets/assets/icons/android.svg": "e57e55c11155e0da56d4913db52486c7",
"assets/assets/icons/graphic.svg": "6f05c1c6706df22c79a37a7ca4df3214",
"assets/assets/icons/website.svg": "421f827e65eb765b8ad10e386bf07849",
"assets/assets/icons/apple.svg": "81afc16bd2183fcbdad794cd391e7f0d",
"assets/assets/fonts/poppins/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/assets/fonts/poppins/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/assets/fonts/poppins/Poppins-Italic.ttf": "5e956c44060a7b3c0e39819ae390ab15",
"assets/assets/gif/hi.gif": "cad5918d86b6a7e83f1fb4acead70e4c",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
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
