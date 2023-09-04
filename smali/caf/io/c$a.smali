.class public interface abstract Lcaf/io/c$a;
.super Ljava/lang/Object;
.source "AnalyticsApi.java"

# interfaces
.implements Lcaf/io/O;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;)Lretrofit2/Call;
    .param p1    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/TrackingIdParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/TrackingIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tracking"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "trackingId"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/EventParam;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "tracking/{trackingId}"
    .end annotation
.end method
