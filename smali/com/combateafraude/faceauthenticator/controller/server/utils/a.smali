.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/server/utils/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/faceauthenticator/controller/server/Server;

.field public final synthetic b:Lcom/combateafraude/faceauthenticator/controller/server/Server;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/controller/server/Server;Lcom/combateafraude/faceauthenticator/controller/server/Server;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;->a:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;->b:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;->a:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;->b:Lcom/combateafraude/faceauthenticator/controller/server/Server;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/controller/server/utils/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/server/utils/UploadHelper;->b(Lcom/combateafraude/faceauthenticator/controller/server/Server;Lcom/combateafraude/faceauthenticator/controller/server/Server;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
