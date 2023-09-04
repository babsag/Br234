.class public interface abstract Lcom/combateafraude/documentdetector/controller/server/api/AnalyticsApi;
.super Ljava/lang/Object;
.source "AnalyticsApi.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/server/api/Api;


# virtual methods
.method public abstract addEvent(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "trackingId"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/EventParam;",
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

.method public abstract requestTrackingId(Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;)Lretrofit2/Call;
    .param p1    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/TrackingIdParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/TrackingIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "tracking"
    .end annotation
.end method
