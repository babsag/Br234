.class Lbr/com/topaz/heartbeat/utils/OFDException$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/Exception;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbr/com/topaz/q/b;

.field final synthetic d:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/utils/OFDException;Ljava/lang/Exception;Ljava/lang/String;Lbr/com/topaz/q/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->c:Lbr/com/topaz/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->a:Ljava/lang/Exception;

    const-string v1, ""

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-static {v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/q/f;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/q/f;->d()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/q/f;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/q/f;->d()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v1, v0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->a:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v2, Lbr/com/topaz/q/h;

    iget-object v3, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lbr/com/topaz/q/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException$a;->c:Lbr/com/topaz/q/b;

    invoke-interface {v0, v2}, Lbr/com/topaz/q/b;->a(Lbr/com/topaz/q/h;)V

    return-void
.end method
