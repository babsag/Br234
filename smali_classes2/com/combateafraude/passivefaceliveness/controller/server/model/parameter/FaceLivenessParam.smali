.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;
.super Ljava/lang/Object;
.source "FaceLivenessParam.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private bucket:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bucket"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private person:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personData"
    .end annotation
.end field

.field private trackingId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;->bucket:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;->key:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;->person:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;->trackingId:Ljava/lang/String;

    return-void
.end method
