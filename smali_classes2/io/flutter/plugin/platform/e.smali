.class Lio/flutter/plugin/platform/e;
.super Ljava/lang/Object;
.source "PlatformViewRegistryImpl.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRegistry;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugin/platform/PlatformViewFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/e;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lio/flutter/plugin/platform/PlatformViewFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/PlatformViewFactory;

    return-object p1
.end method

.method public registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method