.class public Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;
.super Ljava/lang/Object;
.source "FaceAuthParam.java"


# instance fields
.field private a:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "peopleId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;->a:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;

    .line 3
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;->d:Ljava/lang/String;

    return-void
.end method
