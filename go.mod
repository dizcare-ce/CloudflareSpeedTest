module github.com/myusername/CloudflareSpeedTest

go 1.18

require (
	github.com/VividCortex/ewma v1.2.0
	github.com/cheggaaa/pb/v3 v3.1.7
	github.com/fatih/color v1.18.0
)

require (
	github.com/mattn/go-colorable v0.1.14 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mattn/go-runewidth v0.0.16 // indirect
	github.com/rivo/uniseg v0.4.7 // indirect
	golang.org/x/sys v0.30.0 // indirect
)

// Personal fork of XIU2/CloudflareSpeedTest
// Upstream: https://github.com/XIU2/CloudflareSpeedTest
// Fork notes:
//   - Studying how the TCP ping and HTTP latency measurement works
//   - May experiment with adjusting default concurrency and timeout values
//   - TODO: look into whether increasing defaultRoutines (200 -> 500) causes
//     meaningful accuracy loss or just speeds up the initial IP scan
//   - Tested defaultRoutines=500 briefly: scan finishes ~2x faster with no
//     obvious accuracy regression on my home connection (100Mbps, low latency)
//     keeping it at 200 for now until I can do a more controlled comparison
//   - 2024-02: decided to bump defaultRoutines to 300 as a middle ground;
//     seems stable on my connection and shaves ~30s off a full scan
