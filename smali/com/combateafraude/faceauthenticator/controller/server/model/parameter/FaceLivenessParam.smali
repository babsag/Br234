.class public Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceLivenessParam;
.super Ljava/lang/Object;
.source "FaceLivenessParam.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceLivenessParam;->a:Ljava/lang/String;

    return-void
.end method
