.class public final Lio/sentry/protocol/DebugMeta;
.super Ljava/lang/Object;
.source "DebugMeta.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/DebugMeta$JsonKeys;,
        Lio/sentry/protocol/DebugMeta$Deserializer;
    }
.end annotation


# instance fields
.field private a:Lio/sentry/protocol/SdkInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/sentry/protocol/DebugMeta;Lio/sentry/protocol/SdkInfo;)Lio/sentry/protocol/SdkInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->a:Lio/sentry/protocol/SdkInfo;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/DebugMeta;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->b:Ljava/util/List;

    return-object v0
.end method

.method public getSdkInfo()Lio/sentry/protocol/SdkInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->a:Lio/sentry/protocol/SdkInfo;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->c:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1    # Lio/sentry/JsonObjectWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->beginObject()Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->a:Lio/sentry/protocol/SdkInfo;

    if-eqz v0, :cond_0

    const-string v0, "sdk_info"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/DebugMeta;->a:Lio/sentry/protocol/SdkInfo;

    invoke-virtual {v0, p2, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "images"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/DebugMeta;->b:Ljava/util/List;

    invoke-virtual {v0, p2, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/DebugMeta;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lio/sentry/protocol/DebugMeta;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->endObject()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/protocol/DebugMeta;->b:Ljava/util/List;

    return-void
.end method

.method public setSdkInfo(Lio/sentry/protocol/SdkInfo;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/SdkInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->a:Lio/sentry/protocol/SdkInfo;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/DebugMeta;->c:Ljava/util/Map;

    return-void
.end method
