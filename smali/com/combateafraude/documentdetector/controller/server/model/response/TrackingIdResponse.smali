.class public Lcom/combateafraude/documentdetector/controller/server/model/response/TrackingIdResponse;
.super Ljava/lang/Object;
.source "TrackingIdResponse.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackingId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/TrackingIdResponse;->a:Ljava/lang/String;

    return-object v0
.end method