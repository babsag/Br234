.class public final synthetic Lcom/combateafraude/documentdetector/controller/server/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Authenticator;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/server/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/combateafraude/documentdetector/controller/server/Server;->d(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
