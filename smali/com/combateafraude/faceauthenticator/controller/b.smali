.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/b;->a:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/b;->a:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->C(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Ljava/lang/Void;)V

    return-void
.end method
