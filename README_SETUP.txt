CORRECTED TIKTOK AUCTION PACKAGE

1. Netlify must deploy the CONTENTS of the tiktok_auction_control folder.
2. Keep netlify.toml and the netlify folder at the same level as index.html.
3. In Netlify environment variables add:
   AUCTION_CONTROL_KEY = your private control key
   AUCTION_BRIDGE_KEY = your private bridge key
4. Redeploy the site.
5. Open https://auctiontiktok.netlify.app/control.html and enter the control key.
6. In bridge, copy config.example.json to config.json and put the SAME bridge key there.
7. Run bridge/START_BRIDGE.bat.
8. TikTok LIVE Studio URL: https://auctiontiktok.netlify.app/

Timer behavior:
- Main auction counts down.
- At 00:00, Stream Delay starts automatically.
- Gifts never extend either timer.
- At Stream Delay 00:00, auction becomes ENDED.
