.class Lio/flutter/plugin/platform/PlatformPlugin$a;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/PlatformPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clipboardHasStrings()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;->PLAIN_TEXT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;

    .line 2
    invoke-static {v0, v1}, Lio/flutter/plugin/platform/PlatformPlugin;->h(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->h(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->a(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    return-void
.end method

.method public popSystemNavigator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->g(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public restoreSystemUiOverlays()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->e(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public setApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->c(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    return-void
.end method

.method public setClipboardData(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->i(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V

    return-void
.end method

.method public setPreferredOrientations(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->b(Lio/flutter/plugin/platform/PlatformPlugin;I)V

    return-void
.end method

.method public setSystemUiOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->f(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    return-void
.end method

.method public showSystemOverlays(Ljava/util/List;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->d(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/util/List;)V

    return-void
.end method

.method public vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$a;->a:Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->s(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V

    return-void
.end method
