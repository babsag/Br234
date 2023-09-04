.class Lbr/com/topaz/heartbeat/ocr/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/ocr/e;->a(Ljava/util/List;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/ocr/e;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/ocr/e;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/f0/e$b;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v0, p1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e;Lbr/com/topaz/f0/e$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e;[B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a(JI)V

    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/ocr/e;->b(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/ocr/e$d;

    move-result-object v1

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lbr/com/topaz/heartbeat/ocr/e$d;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a(JI)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/ocr/e;->b(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/ocr/e$d;

    move-result-object p1

    const/16 v0, -0x35

    invoke-interface {p1, v0}, Lbr/com/topaz/heartbeat/ocr/e$d;->onFailure(I)V

    return-void
.end method

.method public b(Lbr/com/topaz/f0/e$b;)V
    .locals 7

    const-string v0, "Error from OCR API: "

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/ocr/e;->d(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v4}, Lbr/com/topaz/heartbeat/ocr/e;->c(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/u0/a;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->b()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Lbr/com/topaz/u0/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v1}, Lbr/com/topaz/heartbeat/ocr/e;->d(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/utils/OFDException;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->b()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/ocr/e;->a(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lbr/com/topaz/heartbeat/telemetry/TelemetryOCRPresenter;->a(JI)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/e$a;->a:Lbr/com/topaz/heartbeat/ocr/e;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/ocr/e;->b(Lbr/com/topaz/heartbeat/ocr/e;)Lbr/com/topaz/heartbeat/ocr/e$d;

    move-result-object v0

    invoke-virtual {p1}, Lbr/com/topaz/f0/e$b;->c()I

    move-result p1

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/ocr/e$d;->onFailure(I)V

    return-void
.end method
