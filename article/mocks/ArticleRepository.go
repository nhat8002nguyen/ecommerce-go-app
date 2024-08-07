// Code generated by mockery v2.42.0. DO NOT EDIT.

package mocks

import (
	context "context"

	domain "github.com/nhat8002nguyen/ecommerce-go-app/domain"
	mock "github.com/stretchr/testify/mock"
)

// ArticleRepository is an autogenerated mock type for the ArticleRepository type
type ArticleRepository struct {
	mock.Mock
}

// Delete provides a mock function with given fields: ctx, id
func (_m *ArticleRepository) Delete(ctx context.Context, id int64) error {
	ret := _m.Called(ctx, id)

	if len(ret) == 0 {
		panic("no return value specified for Delete")
	}

	var r0 error
	if rf, ok := ret.Get(0).(func(context.Context, int64) error); ok {
		r0 = rf(ctx, id)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}

// Fetch provides a mock function with given fields: ctx, cursor, num
func (_m *ArticleRepository) Fetch(ctx context.Context, cursor string, num int64) ([]domain.Article, string, error) {
	ret := _m.Called(ctx, cursor, num)

	if len(ret) == 0 {
		panic("no return value specified for Fetch")
	}

	var r0 []domain.Article
	var r1 string
	var r2 error
	if rf, ok := ret.Get(0).(func(context.Context, string, int64) ([]domain.Article, string, error)); ok {
		return rf(ctx, cursor, num)
	}
	if rf, ok := ret.Get(0).(func(context.Context, string, int64) []domain.Article); ok {
		r0 = rf(ctx, cursor, num)
	} else {
		if ret.Get(0) != nil {
			r0 = ret.Get(0).([]domain.Article)
		}
	}

	if rf, ok := ret.Get(1).(func(context.Context, string, int64) string); ok {
		r1 = rf(ctx, cursor, num)
	} else {
		r1 = ret.Get(1).(string)
	}

	if rf, ok := ret.Get(2).(func(context.Context, string, int64) error); ok {
		r2 = rf(ctx, cursor, num)
	} else {
		r2 = ret.Error(2)
	}

	return r0, r1, r2
}

// GetByID provides a mock function with given fields: ctx, id
func (_m *ArticleRepository) GetByID(ctx context.Context, id int64) (domain.Article, error) {
	ret := _m.Called(ctx, id)

	if len(ret) == 0 {
		panic("no return value specified for GetByID")
	}

	var r0 domain.Article
	var r1 error
	if rf, ok := ret.Get(0).(func(context.Context, int64) (domain.Article, error)); ok {
		return rf(ctx, id)
	}
	if rf, ok := ret.Get(0).(func(context.Context, int64) domain.Article); ok {
		r0 = rf(ctx, id)
	} else {
		r0 = ret.Get(0).(domain.Article)
	}

	if rf, ok := ret.Get(1).(func(context.Context, int64) error); ok {
		r1 = rf(ctx, id)
	} else {
		r1 = ret.Error(1)
	}

	return r0, r1
}

// GetByTitle provides a mock function with given fields: ctx, title
func (_m *ArticleRepository) GetByTitle(ctx context.Context, title string) (domain.Article, error) {
	ret := _m.Called(ctx, title)

	if len(ret) == 0 {
		panic("no return value specified for GetByTitle")
	}

	var r0 domain.Article
	var r1 error
	if rf, ok := ret.Get(0).(func(context.Context, string) (domain.Article, error)); ok {
		return rf(ctx, title)
	}
	if rf, ok := ret.Get(0).(func(context.Context, string) domain.Article); ok {
		r0 = rf(ctx, title)
	} else {
		r0 = ret.Get(0).(domain.Article)
	}

	if rf, ok := ret.Get(1).(func(context.Context, string) error); ok {
		r1 = rf(ctx, title)
	} else {
		r1 = ret.Error(1)
	}

	return r0, r1
}

// Store provides a mock function with given fields: ctx, a
func (_m *ArticleRepository) Store(ctx context.Context, a *domain.Article) error {
	ret := _m.Called(ctx, a)

	if len(ret) == 0 {
		panic("no return value specified for Store")
	}

	var r0 error
	if rf, ok := ret.Get(0).(func(context.Context, *domain.Article) error); ok {
		r0 = rf(ctx, a)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}

// Update provides a mock function with given fields: ctx, ar
func (_m *ArticleRepository) Update(ctx context.Context, ar *domain.Article) error {
	ret := _m.Called(ctx, ar)

	if len(ret) == 0 {
		panic("no return value specified for Update")
	}

	var r0 error
	if rf, ok := ret.Get(0).(func(context.Context, *domain.Article) error); ok {
		r0 = rf(ctx, ar)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}

// NewArticleRepository creates a new instance of ArticleRepository. It also registers a testing interface on the mock and a cleanup function to assert the mocks expectations.
// The first argument is typically a *testing.T value.
func NewArticleRepository(t interface {
	mock.TestingT
	Cleanup(func())
}) *ArticleRepository {
	mock := &ArticleRepository{}
	mock.Mock.Test(t)

	t.Cleanup(func() { mock.AssertExpectations(t) })

	return mock
}
