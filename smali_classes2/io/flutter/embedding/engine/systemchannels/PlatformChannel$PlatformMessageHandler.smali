.class public interface abstract Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;
.super Ljava/lang/Object;
.source "PlatformChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlatformMessageHandler"
.end annotation


# virtual methods
.method public abstract clipboardHasStrings()Z
.end method

.method public abstract getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract popSystemNavigator()V
.end method

.method public abstract restoreSystemUiOverlays()V
.end method

.method public abstract setApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setClipboardData(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPreferredOrientations(I)V
.end method

.method public abstract setSystemUiOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showSystemOverlays(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
