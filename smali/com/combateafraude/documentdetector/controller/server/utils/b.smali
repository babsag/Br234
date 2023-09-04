.class public final synthetic Lcom/combateafraude/documentdetector/controller/server/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/combateafraude/documentdetector/controller/server/Server;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Lcom/combateafraude/documentdetector/controller/server/Server;


# direct methods
.method public synthetic constructor <init>(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->a:Lcom/combateafraude/documentdetector/controller/server/Server;

    iput-object p2, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->d:Ljava/lang/String;

    iput p5, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->e:I

    iput-object p6, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->f:Lcom/combateafraude/documentdetector/controller/server/Server;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->a:Lcom/combateafraude/documentdetector/controller/server/Server;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->d:Ljava/lang/String;

    iget v4, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->e:I

    iget-object v5, p0, Lcom/combateafraude/documentdetector/controller/server/utils/b;->f:Lcom/combateafraude/documentdetector/controller/server/Server;

    invoke-static/range {v0 .. v5}, Lcom/combateafraude/documentdetector/controller/server/utils/UploadHelper;->f(Lcom/combateafraude/documentdetector/controller/server/Server;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/combateafraude/documentdetector/controller/server/Server;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
