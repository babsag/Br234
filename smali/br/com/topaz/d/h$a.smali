.class Lbr/com/topaz/d/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/d/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/topaz/d/h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbr/com/topaz/d/h;


# direct methods
.method constructor <init>(Lbr/com/topaz/d/h;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/d/h$a;->b:Lbr/com/topaz/d/h;

    iput-object p2, p0, Lbr/com/topaz/d/h$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/d/b;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/d/h$a;->b:Lbr/com/topaz/d/h;

    iget-object v1, p0, Lbr/com/topaz/d/h$a;->a:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lbr/com/topaz/d/h;->a(Lbr/com/topaz/d/h;Lbr/com/topaz/d/b;Ljava/util/List;)V

    return-void
.end method
