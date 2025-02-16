#!/bin/bash

# =========================
# システム全体の設定
# =========================

# スクロールバーを常時表示
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# ウィンドウサイズ変更を高速化
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# クラッシュレポートの無効化
defaults write com.apple.CrashReporter DialogType -string "none"

# バッテリー残量を%表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# ~/Library フォルダを表示
chflags nohidden ~/Library

# 非アクティブなアプリの自動終了を無効化
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# ヘルプビューアのウィンドウを通常モードに設定
defaults write com.apple.helpviewer DevMode -bool true

# ログインウィンドウにシステム情報を表示
defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# スマートダッシュの無効化
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# 自動ピリオド置換の無効化
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# スマートクオートの無効化
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# 自動修正の無効化
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# =========================
# 日付表示の設定
# =========================

# 日付表示設定（曜日を表示）
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE H:mm'

# =========================
# Dockの設定
# =========================

# Dock効果の設定
defaults write com.apple.dock mineffect -string "scale"

# Dockで開いているアプリケーションのインジケータライトを表示
defaults write com.apple.dock show-process-indicators -bool true

# Dockを自動的に隠す
defaults write com.apple.dock autohide -bool true

# Dockのサイズを変更（36ピクセル）
defaults write com.apple.dock tilesize -int 36

# Dockのアニメーション速度を高速化
defaults write com.apple.dock autohide-time-modifier -float 0.1

# 最近使用したアプリを非表示
defaults write com.apple.dock show-recents -bool true

# =========================
# Safariの設定
# =========================

# 検索クエリをAppleへ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# tabキーでWebページの項目の強調
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

# アドレスバーに表示されるURLを全表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# ファイルのダウンロード後に自動でファイルを開くのを無効化
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# 自動修正の無効化
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# 追跡を無効化
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# =========================
# トラックパッド & マウスの設定
# =========================

# タップでクリック
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -bool true

# トラックパッドの軌跡の速さ
defaults write -g com.apple.trackpad.scaling 3

# マウスの軌跡の速さ
defaults write -g com.apple.mouse.scaling 3

# スクロールの速さ
defaults write -g com.apple.scrollwheel.scaling 5

# スクロール方向をナチュラルに変更
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# =========================
# スクリーンショットの設定
# =========================

# スクリーンショットの撮影時に影を含めない
defaults write com.apple.screencapture disable-shadow -boolean true

# スクリーンショットの保存先を変更
defaults write com.apple.screencapture location ~/Screenshots

# スクリーンショットのファイル名を変更
defaults write com.apple.screencapture name ""

# スクリーンショットのファイル形式を変更
defaults write com.apple.screencapture type "png"

# スクリーンショットの撮影時に日付を含める
defaults write com.apple.screencapture include-date -bool true

# スクリーンショットの撮影時にサムネイルを表示しない
defaults write com.apple.screencapture show-thumbnail -bool false

# =========================
# Finderの設定
# =========================

# 隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true

# 拡張子を常に表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

# 検索時のデフォルトをカレントディレクトリに設定
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# USBやネットワークストレージに .DS_Store を作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# マウントされたディスクがあったらFinderで自動的に開く
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# =========================
# 設定反映のためのアプリケーション再起動
# =========================

killall Dock
killall Finder
killall Safari
killall SystemUIServer