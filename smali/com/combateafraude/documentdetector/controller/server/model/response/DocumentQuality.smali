.class public Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;
.super Ljava/lang/Object;
.source "DocumentQuality.java"


# instance fields
.field private a:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
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
.method public getQuality()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->a:D

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;->b:Ljava/lang/String;

    return-object v0
.end method
