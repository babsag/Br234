.class Lbr/com/topaz/heartbeat/face/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/f0/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/face/b;->a(Ljava/util/List;Lbr/com/topaz/t/b;Lbr/com/topaz/heartbeat/face/FaceStructure;Lbr/com/topaz/heartbeat/face/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/face/b$c;

.field final synthetic b:Lbr/com/topaz/heartbeat/face/b;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/face/b;Lbr/com/topaz/heartbeat/face/b$c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/face/b$a;->b:Lbr/com/topaz/heartbeat/face/b;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/face/b$a;->a:Lbr/com/topaz/heartbeat/face/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/face/b$a;->a:Lbr/com/topaz/heartbeat/face/b$c;

    invoke-interface {v0, p1}, Lbr/com/topaz/heartbeat/face/b$c;->onFinish(I)V

    return-void
.end method
