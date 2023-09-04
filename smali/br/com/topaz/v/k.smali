.class public final synthetic Lbr/com/topaz/v/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbr/com/topaz/n/a$a;


# instance fields
.field public final synthetic a:Lbr/com/topaz/v/h;

.field public final synthetic b:Lbr/com/topaz/v/i;


# direct methods
.method public synthetic constructor <init>(Lbr/com/topaz/v/h;Lbr/com/topaz/v/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/v/k;->a:Lbr/com/topaz/v/h;

    iput-object p2, p0, Lbr/com/topaz/v/k;->b:Lbr/com/topaz/v/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/v/k;->a:Lbr/com/topaz/v/h;

    iget-object v1, p0, Lbr/com/topaz/v/k;->b:Lbr/com/topaz/v/i;

    invoke-static {v0, v1}, Lbr/com/topaz/v/h;->e(Lbr/com/topaz/v/h;Lbr/com/topaz/v/i;)V

    return-void
.end method
