.class public final synthetic Landroidx/constraintlayout/core/state/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/a;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/a;->a:Landroidx/constraintlayout/core/state/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->e(F)F

    move-result p1

    return p1
.end method
