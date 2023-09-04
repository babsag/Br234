.class Lbr/com/topaz/w/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/w/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/w/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/r/b;

.field final synthetic b:Lbr/com/topaz/w/c;


# direct methods
.method constructor <init>(Lbr/com/topaz/w/c;Lbr/com/topaz/r/b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/w/c$a;->b:Lbr/com/topaz/w/c;

    iput-object p2, p0, Lbr/com/topaz/w/c$a;->a:Lbr/com/topaz/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/w/f;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/w/c$a;->a:Lbr/com/topaz/r/b;

    new-instance v1, Lbr/com/topaz/w/c$a$a;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/w/c$a$a;-><init>(Lbr/com/topaz/w/c$a;Lbr/com/topaz/w/f;)V

    invoke-virtual {v0, v1}, Lbr/com/topaz/r/b;->a(Lbr/com/topaz/r/b$a;)V

    iget-object p1, p0, Lbr/com/topaz/w/c$a;->a:Lbr/com/topaz/r/b;

    invoke-virtual {p1}, Lbr/com/topaz/r/b;->run()V

    return-void
.end method
