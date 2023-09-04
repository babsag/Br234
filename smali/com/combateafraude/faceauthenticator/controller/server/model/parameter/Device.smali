.class public Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operatingSystem"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manufacturer"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fingerprint"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->android_caf:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/utils/Fingerprint;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/Device;->d:Ljava/lang/String;

    return-void
.end method
