.class Lbr/com/topaz/heartbeat/token/i$b$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/heartbeat/token/i$b$a$a;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/heartbeat/token/i$b$a$a;


# direct methods
.method constructor <init>(Lbr/com/topaz/heartbeat/token/i$b$a$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/i$b$a$a$a;->a:Lbr/com/topaz/heartbeat/token/i$b$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/i$b$a$a$a;->a:Lbr/com/topaz/heartbeat/token/i$b$a$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$b$a$a;->a:Lbr/com/topaz/heartbeat/token/i$b$a;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$b$a;->i:Lbr/com/topaz/heartbeat/token/i$b;

    iget-object v0, v0, Lbr/com/topaz/heartbeat/token/i$b;->b:Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;

    invoke-interface {v0}, Lbr/com/topaz/heartbeat/token/Token$AuthorizeCallback;->onSuccess()V

    return-void
.end method
