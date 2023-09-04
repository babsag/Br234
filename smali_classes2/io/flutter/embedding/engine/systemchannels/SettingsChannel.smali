.class public Lio/flutter/embedding/engine/systemchannels/SettingsChannel;
.super Ljava/lang/Object;
.source "SettingsChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;,
        Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;
    }
.end annotation


# static fields
.field public static final CHANNEL_NAME:Ljava/lang/String; = "flutter/settings"


# instance fields
.field public final channel:Lio/flutter/plugin/common/BasicMessageChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/BasicMessageChannel<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/dart/DartExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    sget-object v1, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    const-string v2, "flutter/settings"

    invoke-direct {v0, p1, v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method


# virtual methods
.method public startMessage()Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    invoke-direct {v0, v1}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;-><init>(Lio/flutter/plugin/common/BasicMessageChannel;)V

    return-object v0
.end method
