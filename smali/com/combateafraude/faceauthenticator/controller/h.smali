.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/h;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/h;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-static {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->I(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Ljava/lang/Exception;)V

    return-void
.end method
