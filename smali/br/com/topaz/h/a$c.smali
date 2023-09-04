.class Lbr/com/topaz/h/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lbr/com/topaz/h/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/h/a;


# direct methods
.method private constructor <init>(Lbr/com/topaz/h/a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/h/a$c;->a:Lbr/com/topaz/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbr/com/topaz/h/a;Lbr/com/topaz/h/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/h/a$c;-><init>(Lbr/com/topaz/h/a;)V

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/h/a$b;Lbr/com/topaz/h/a$b;)I
    .locals 4

    invoke-static {p1}, Lbr/com/topaz/h/a$b;->a(Lbr/com/topaz/h/a$b;)I

    move-result v0

    invoke-static {p2}, Lbr/com/topaz/h/a$b;->a(Lbr/com/topaz/h/a$b;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lbr/com/topaz/h/a$b;->b(Lbr/com/topaz/h/a$b;)I

    move-result v0

    invoke-static {p2}, Lbr/com/topaz/h/a$b;->b(Lbr/com/topaz/h/a$b;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Lbr/com/topaz/h/a$b;->b(Lbr/com/topaz/h/a$b;)I

    move-result p1

    invoke-static {p2}, Lbr/com/topaz/h/a$b;->b(Lbr/com/topaz/h/a$b;)I

    move-result p2

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    invoke-static {p1}, Lbr/com/topaz/h/a$b;->a(Lbr/com/topaz/h/a$b;)I

    move-result p1

    invoke-static {p2}, Lbr/com/topaz/h/a$b;->a(Lbr/com/topaz/h/a$b;)I

    move-result p2

    if-ge p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lbr/com/topaz/h/a$b;

    check-cast p2, Lbr/com/topaz/h/a$b;

    invoke-virtual {p0, p1, p2}, Lbr/com/topaz/h/a$c;->a(Lbr/com/topaz/h/a$b;Lbr/com/topaz/h/a$b;)I

    move-result p1

    return p1
.end method
