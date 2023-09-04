.class Lbr/com/topaz/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/x/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/i/a;->a(Lbr/com/topaz/l/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/i/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/i/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/i/a$a;->a:Lbr/com/topaz/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ofd_hb_configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lbr/com/topaz/i/a$a;->a:Lbr/com/topaz/i/a;

    invoke-static {p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {p1, v0, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/i/a$a;->a:Lbr/com/topaz/i/a;

    invoke-static {v0}, Lbr/com/topaz/i/a;->b(Lbr/com/topaz/i/a;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v0

    const-string v1, "001"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object p1, p0, Lbr/com/topaz/i/a$a;->a:Lbr/com/topaz/i/a;

    const/16 v0, 0x7d2

    invoke-static {p1, v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFinish(I)V
    .locals 2

    if-ltz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lbr/com/topaz/i/a$a;->a:Lbr/com/topaz/i/a;

    invoke-static {p1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;)Lbr/com/topaz/l/f0;

    move-result-object v0

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-static {p1, v0, v1}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;Lbr/com/topaz/l/g;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lbr/com/topaz/i/a$a;->a:Lbr/com/topaz/i/a;

    const/16 v0, 0x7d2

    invoke-static {p1, v0}, Lbr/com/topaz/i/a;->a(Lbr/com/topaz/i/a;I)V

    :cond_0
    :goto_0
    return-void
.end method
