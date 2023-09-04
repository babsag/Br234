.class Lbr/com/topaz/r0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/r0/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbr/com/topaz/r0/a;


# direct methods
.method constructor <init>(Lbr/com/topaz/r0/a;J)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/r0/a$a;->b:Lbr/com/topaz/r0/a;

    iput-wide p2, p0, Lbr/com/topaz/r0/a$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[B)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ts"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    iget-wide v2, p0, Lbr/com/topaz/r0/a$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    iget-object v0, p0, Lbr/com/topaz/r0/a$a;->b:Lbr/com/topaz/r0/a;

    invoke-static {v0}, Lbr/com/topaz/r0/a;->a(Lbr/com/topaz/r0/a;)Lbr/com/topaz/l/e0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/l/e0;->c(J)V

    iget-object p1, p0, Lbr/com/topaz/r0/a$a;->b:Lbr/com/topaz/r0/a;

    invoke-static {p1}, Lbr/com/topaz/r0/a;->a(Lbr/com/topaz/r0/a;)Lbr/com/topaz/l/e0;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lbr/com/topaz/l/e0;->j(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lbr/com/topaz/r0/a$a;->b:Lbr/com/topaz/r0/a;

    invoke-static {p2}, Lbr/com/topaz/r0/a;->b(Lbr/com/topaz/r0/a;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object p2

    const-string v0, "038"

    invoke-virtual {p2, p1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFailure(I)V
    .locals 0

    return-void
.end method
