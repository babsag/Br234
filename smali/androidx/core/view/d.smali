.class public final synthetic Landroidx/core/view/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/view/OnReceiveContentViewBehavior;


# static fields
.field public static final synthetic a:Landroidx/core/view/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/d;

    invoke-direct {v0}, Landroidx/core/view/d;-><init>()V

    sput-object v0, Landroidx/core/view/d;->a:Landroidx/core/view/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->o(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    return-object p1
.end method
