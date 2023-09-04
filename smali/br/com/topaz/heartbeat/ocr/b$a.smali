.class Lbr/com/topaz/heartbeat/ocr/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/ocr/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/ocr/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/ocr/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b$a;->a:Lbr/com/topaz/heartbeat/ocr/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p1, p1, Lcom/google/mlkit/common/MlKitException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b$a;->a:Lbr/com/topaz/heartbeat/ocr/b;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/ocr/b;->b(Lbr/com/topaz/heartbeat/ocr/b;)Lbr/com/topaz/heartbeat/ocr/c$a;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b$a;->a:Lbr/com/topaz/heartbeat/ocr/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/ocr/b;->a(Lbr/com/topaz/heartbeat/ocr/b;)Lbr/com/topaz/z/b;

    move-result-object v0

    const/16 v1, -0x32

    :goto_0
    invoke-interface {p1, v1, v0}, Lbr/com/topaz/heartbeat/ocr/c$a;->a(ILbr/com/topaz/z/b;)V

    return-void

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/heartbeat/ocr/b$a;->a:Lbr/com/topaz/heartbeat/ocr/b;

    invoke-static {p1}, Lbr/com/topaz/heartbeat/ocr/b;->b(Lbr/com/topaz/heartbeat/ocr/b;)Lbr/com/topaz/heartbeat/ocr/c$a;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/ocr/b$a;->a:Lbr/com/topaz/heartbeat/ocr/b;

    invoke-static {v0}, Lbr/com/topaz/heartbeat/ocr/b;->a(Lbr/com/topaz/heartbeat/ocr/b;)Lbr/com/topaz/z/b;

    move-result-object v0

    const/16 v1, -0x33

    goto :goto_0
.end method
