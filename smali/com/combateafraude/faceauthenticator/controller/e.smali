.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/controller/emulator/EmulatorDetector$OnEmulatorDetectorListener;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

.field public final synthetic b:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

.field public final synthetic c:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/e;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/e;->b:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/e;->c:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/e;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/e;->b:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/e;->c:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    invoke-static {v0, v1, v2, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->F(Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Z)V

    return-void
.end method
