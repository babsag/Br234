.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

.field public final synthetic b:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/g;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/g;->b:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/g;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/g;->b:Lcom/google/mlkit/vision/common/InputImage;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->H(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    return-void
.end method
