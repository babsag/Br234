.class public final synthetic Lcom/combateafraude/faceauthenticator/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

.field public final synthetic b:Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

.field public final synthetic c:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/a;->a:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/a;->b:Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/a;->c:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/a;->a:Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/a;->b:Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/a;->c:Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-static {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->q(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method
