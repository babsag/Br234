.class public Lorg/junit/internal/runners/rules/RuleMemberValidator;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/rules/RuleMemberValidator$e;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$j;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$i;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$d;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$g;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$c;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$h;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$f;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$k;,
        Lorg/junit/internal/runners/rules/RuleMemberValidator$b;
    }
.end annotation


# static fields
.field public static final CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

.field public static final CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

.field public static final RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

.field public static final RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/internal/runners/rules/RuleMemberValidator$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->d()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$c;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$h;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$h;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$e;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$e;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->d()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    .line 2
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->h()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$f;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$f;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$d;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$d;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->d()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    .line 3
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->d()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->e()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$c;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$c;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$h;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$h;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$j;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$j;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->d()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->CLASS_RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    .line 4
    invoke-static {}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->h()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->e()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$f;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$f;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$g;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    new-instance v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$i;

    invoke-direct {v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$i;-><init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->f(Lorg/junit/internal/runners/rules/RuleMemberValidator$k;)Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->d()Lorg/junit/internal/runners/rules/RuleMemberValidator;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->RULE_METHOD_VALIDATOR:Lorg/junit/internal/runners/rules/RuleMemberValidator;

    return-void
.end method

.method constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->b(Lorg/junit/internal/runners/rules/RuleMemberValidator$b;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->a:Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->c(Lorg/junit/internal/runners/rules/RuleMemberValidator$b;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->b:Z

    .line 4
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;->a(Lorg/junit/internal/runners/rules/RuleMemberValidator$b;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->e(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->f(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->g(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    return p0
.end method

.method private static d()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;
    .locals 3

    .line 1
    new-instance v0, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    const-class v1, Lorg/junit/ClassRule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;-><init>(Ljava/lang/Class;Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    return-object v0
.end method

.method private static e(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/junit/rules/MethodRule;

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static f(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->e(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->g(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/junit/rules/TestRule;

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static h()Lorg/junit/internal/runners/rules/RuleMemberValidator$b;
    .locals 3

    .line 1
    new-instance v0, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;

    const-class v1, Lorg/junit/Rule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$b;-><init>(Ljava/lang/Class;Lorg/junit/internal/runners/rules/RuleMemberValidator$a;)V

    return-object v0
.end method

.method private i(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/internal/runners/rules/RuleMemberValidator$k;

    .line 2
    iget-object v2, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->a:Ljava/lang/Class;

    invoke-interface {v1, p1, v2, p2}, Lorg/junit/internal/runners/rules/RuleMemberValidator$k;->a(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/rules/RuleMemberValidator;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runners/model/FrameworkMember;

    .line 3
    invoke-direct {p0, v0, p2}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->i(Lorg/junit/runners/model/FrameworkMember;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method
