.class public Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;
.super Ljava/lang/Object;
.source "FaceAuthenticatorResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final LENS_FACING_BACK:I = 0x1

.field public static final LENS_FACING_FRONT:I = 0x0

.field public static final PARAMETER_NAME:Ljava/lang/String; = "FaceAuthenticatorResult"


# instance fields
.field private a:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authenticated"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signedResponse"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackingId"
    .end annotation
.end field

.field private d:Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkFailure"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lensFacing"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->a:Z

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->b:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->c:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->d:Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->a:Z

    .line 3
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->e:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->d:Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;

    return-void
.end method


# virtual methods
.method public getLensFacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->e:I

    return v0
.end method

.method public getSdkFailure()Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->d:Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;

    return-object v0
.end method

.method public getSignedResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->a:Z

    return v0
.end method

.method public setSdkFailure(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->d:Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;

    return-void
.end method

.method public wasSuccessful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;->d:Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
