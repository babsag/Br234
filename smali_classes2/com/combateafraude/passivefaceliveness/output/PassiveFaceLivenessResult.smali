.class public Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_FRONT:I = 0x0

.field public static final PARAMETER_NAME:Ljava/lang/String; = "PassiveFaceLivenessResult"
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private final capturePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capturePath"
    .end annotation
.end field

.field private final imagePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imagePath"
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private lensFacing:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lensFacing"
    .end annotation
.end field

.field private sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkFailure"
    .end annotation
.end field

.field private final signedResponse:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signedResponse"
    .end annotation
.end field

.field private final trackingId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imagePath:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imageUrl:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->capturePath:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->signedResponse:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->trackingId:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imagePath:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->capturePath:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imageUrl:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->signedResponse:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->trackingId:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->lensFacing:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imagePath:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->capturePath:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imageUrl:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->signedResponse:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->trackingId:Ljava/lang/String;

    .line 15
    iput p6, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->lensFacing:I

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    return-void
.end method


# virtual methods
.method public getCapturePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->capturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLensFacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->lensFacing:I

    return v0
.end method

.method public getSdkFailure()Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    return-object v0
.end method

.method public getSignedResponse()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->signedResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method public setSdkFailure(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    return-void
.end method

.method public wasSuccessful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;->sdkFailure:Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
