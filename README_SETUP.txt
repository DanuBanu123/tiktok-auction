TIKTOK LIVE AUCTION - CONTROL PANEL + LIVE STUDIO WIDGET

WHAT THIS PACKAGE DOES
- index.html = display-only auction widget for TikTok LIVE Studio.
- control.html = private control panel for settings, restart, reset and gift simulation.
- Netlify Functions + Netlify Blobs = shared state between the control panel, widget and gift bridge.
- bridge/bridge.mjs = local TikFinity -> website gift relay.

SETUP OVERVIEW
1. Upload this whole folder to a GitHub repository.
2. Import that GitHub repository into Netlify.
3. In Netlify, add two environment variables:
   AUCTION_CONTROL_KEY = a private random key you choose
   AUCTION_BRIDGE_KEY  = another private random key you choose
4. Copy bridge/config.example.json to bridge/config.json and put:
   siteUrl = your Netlify site URL
   bridgeKey = the exact AUCTION_BRIDGE_KEY
5. Install Node.js 18+ on the PC running TikFinity.
6. Double-click START_BRIDGE.bat.
7. Open https://YOUR-SITE.netlify.app/control.html in Chrome and enter AUCTION_CONTROL_KEY.
8. Put https://YOUR-SITE.netlify.app/ into TikTok LIVE Studio as the Link source.

IMPORTANT
- Keep control.html private and do not share your control key.
- Keep bridge/config.json private. Do not upload it to a public repository if it contains your bridge key.
- index.html has no controls; use control.html to operate the auction.
- Gifts do not extend the main timer or stream delay timer.
- The stream delay starts automatically when the main timer reaches zero.
- The auction ends when the stream delay reaches zero.
